Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C847617CC
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 21:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646169085;
	h=To:Subject:From:Message-Id:Date;
	bh=iIeLCTlox4dO3Ehpj/uaGLUZ7GFNuivY72Cf5FcrEjA=;
	b=LzySVO39cq7m+Ub77yL0bqD826MPXBXblZ8YqY9C4ZOPjlv0IBBJaG9mp/NoH2Jh
	SviCCLTznSP6JzQqYFs1Pt5o60panc6LW6HXCLZwqbyOnZtHNUhPLN+bq7Azpt5ww2i
	IVNN/cW9iQck43Mf0EI4vsMF/+d/uslkq4Lzgp7A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646169085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iIeLCTlox4dO3Ehpj/uaGLUZ7GFNuivY72Cf5FcrEjA=;
	b=g4Hd+DltWPfw6CibkeFPcQYaOrRVFPoOqdFMaffzW+Ntv9xB8al2QGkJ0Dge2Th0
	+9OBm7VBukif7gVD2dEHngXB7GSZTyPF0lv7zhDNvzlxXWSisDxf2FyVcAKCSjNvKtk
	SeJHMhTHbjbMMr1F9Q66BqRG+euUP2N6ZxLjpYp0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4752d351-ba8c9f25-57c2-45d1-8283-81359bca0e22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2ff80b1c1017f32084dea15099e1252e4422338025232b3361f22538f6ea5b3
Date: Tue, 1 Mar 2022 21:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646169084
