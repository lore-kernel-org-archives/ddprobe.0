Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450317E3
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 12:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649507878;
	h=To:Subject:From:Message-Id:Date;
	bh=rD5JGCnXkNrPk4MbNG/MFzwBJxpEWkocemeCojEl594=;
	b=PfO8lCgfEiuXgQ203LJRPOsncVv+AW0yILtb6DfanlQKLJ/fkVzNXsvzWOsLOTNL
	T99FUHdsqeFZR2PcZld/QRCYmFoYsBJeE2/zIpjqgsN9l5fnS9qJEtqNUOMLs+5RVSy
	/fpuRTk6Ic6Qdk6M1JhGXcjI9+hWa5Ze61S3eD9s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649507878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rD5JGCnXkNrPk4MbNG/MFzwBJxpEWkocemeCojEl594=;
	b=PCbGP0lMw3eoosXPe353Zs2D94C+cuPZtOG9e9gO0+Vg2ZxyCoyAnGKhZz170EOm
	qq5hof/Qx5c5qSCXLoPnr9+FPHAKsMqvNZ1muQXSxXSG7frPlRQMIPZ1tgp1O1zb/gt
	+8MR0DxfL3yL4r1aJtucGuftxyq94aSfTQwCGvyQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800e54c5d2-b5de4ef2-16e7-4c7d-a2ef-73ac83a13ca4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea8baafea6501d1c5fc8dbae2fe8e89a261282d58e54103adab4af4acf9c9fa7
Date: Sat, 9 Apr 2022 12:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649507878
