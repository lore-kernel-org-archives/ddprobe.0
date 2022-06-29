Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 017312F33
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 14:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656511613;
	h=To:Subject:From:Message-Id:Date;
	bh=DekrDLkwnCS45bewahqub2Ch+8Bni9JrnBSuGyuQlQo=;
	b=jYDeLmOClFxspE03xFhMe3J2CUYBIjrD+GM19/pEF1qx/+q6ggYHJsCDL10UA0+N
	4vTBrlKWjv0KdNPpnc36ZHVIz5uZCtUTPt1+0mTpoycPlEDlzbe3MRLo/WeJ5lDIIg1
	v2KLtyOm0QJ1yIr3UT0NDTj29quQb5BGnoVnd6dc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656511613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DekrDLkwnCS45bewahqub2Ch+8Bni9JrnBSuGyuQlQo=;
	b=BSSptDrc5xZfz7BeO4ep1DrPkW/jnC33d67B4TNA90pUA2/RjZWTYF5W7FRblHP4
	inrZKz+eM3809ZKKZScuzYlWGQhMC1YBsivHELWxcqfjFWDBpXgQCcz1Q6nRcyLUYmW
	a/xRFN5IchLyKYiSoZJBdxJkcGqE/RnxjLAaWw3A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181afc945cf-d500e226-ed67-4599-b99c-02be37a3bf1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f9e7bf6aa26af8bf4bc269f3a30fd0c8b33d2365eed358bcc4b627389bf2a09
Date: Wed, 29 Jun 2022 14:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656511612
