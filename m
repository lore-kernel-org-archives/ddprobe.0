Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24771FA1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 08:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655193659;
	h=To:Subject:From:Message-Id:Date;
	bh=5v9nx5yf7QQR3/QYzAmoIYn4PRc2eLl5F14a8M8AxHQ=;
	b=eoA/H7kgtCEqhYFWYZtw3c7I6GTkxqSUl9ZeZw46PEGZZkpixK7XM7owI20G8B8u
	uwleNkby3fN+X0RA1mtFj688H3jSiQ/1CFmcnqWobGtG/6Eb1sHNkTA4lHXXn0+XBMq
	t+PGx8G5/z7f+HBUREeNHj8VMDbo/C1Y+Q1nM3Es=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655193659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5v9nx5yf7QQR3/QYzAmoIYn4PRc2eLl5F14a8M8AxHQ=;
	b=jGRoEw4yiARPe0Z3ZIRhCXjfCAMHZHjH6kAW7CzmhQDTkQHLekA7nP+XnFxC3/KN
	pbhfzeMmfm6ONh62j4T7+mN7l0gH0ZI1N1hAJLyDAmtabz9xydofgSUkY6nXkV7WVFL
	Rz6LPTGstQKo/HXOIUKUrMZTGrWYh2fuEAU5c9RM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181613ae766-a28fb778-6aaa-42c7-977e-7e4d81979e3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 628617d38d86efe6149556b92c3577164ba8763c5c972e5c675c43e1267ef133
Date: Tue, 14 Jun 2022 08:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655193659
