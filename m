Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8E11866
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648040185;
	h=To:Subject:From:Message-Id:Date;
	bh=IPddmA6xC/IUUqji5+fVMDfWCmPOVjICmVaEXlhyX08=;
	b=UhvuKaSsE12khTE3gn9iTZ/KNSM74/eZbCZIJEoKMBaILjAHuQehnPYhcM254/MB
	lK5873HVYfkvysY2JQD6Y5zzGkJveisiNXbxZ2AlNyxg67jDvlxB5IINLGbq3SxwHpG
	F+LM3IxS1GoGdvG14ll/kKhmrhRCsZtd8zzcTyMI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648040185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IPddmA6xC/IUUqji5+fVMDfWCmPOVjICmVaEXlhyX08=;
	b=Yj2TfpGUKhqmCvkabvW8Jk2eOt5b9ajitlcObTXfESm+4jqC949ovGLhp7hSHe3t
	1pNu6q+2vEjNWmgGYWZfvDAwqhH5TTA7g2IWu0hsGCPoK9L+InBtJPKH1XrCHTjWZwU
	ieCAr9Y0wDuwTTyIKpEYXqQ5w2PUo+eRZL0OJ4XE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb6d98ba8-7c2109ab-17e3-4964-b447-295fc12d12ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c096bce183c87987074efeabae96c1cf7227fd4bb4180355f369d3f79c75691d
Date: Wed, 23 Mar 2022 12:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648040184
