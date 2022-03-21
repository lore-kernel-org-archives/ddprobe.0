Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78F572F24
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647857184;
	h=To:Subject:From:Message-Id:Date;
	bh=AjoQ9yfjhE6nPzP+aWkdtqZ0gI/a1JasxVXGqvES7u0=;
	b=Waq1vbcJ5Tw1wJv8qtZ5obs5nRLyGxdWBuqT2jY3sUuKaMk0/eYZyHvlefIHt9Yp
	JiIPrkDKRLWDZ2RRe/a+9lxfC9GwbsDOPOJIEMevoRIncDcPeKPvK1wM914Dkdr1xBw
	Vmp4SQB2x+6C2EMW0EmHznPpBp55BQbF8jAHS4Co=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647857184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AjoQ9yfjhE6nPzP+aWkdtqZ0gI/a1JasxVXGqvES7u0=;
	b=OozOer3Iov5B7FdqzMGFjw8Z8U8oau6mg3N7lmiosKkI4HAgPIaNvBOT+zrjl0+1
	AYVbmdH353/YCMRc+u2f3AMC/amkyDXWEg8qb+ZTjyeVyMuvEqN++Q+lhoYazCaxBKK
	oMLgDYCrdVPFSdOuGpIkBrD/ijKEMmbQOya2cHf0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fabf12fee-af14108a-12ab-4a56-a10e-a7fbdf618f98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e334afd14edaa3960ba5e037d0cc3df1b1404bfacb9b1ded4663cec6cc7f1cb9
Date: Mon, 21 Mar 2022 10:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647857184
