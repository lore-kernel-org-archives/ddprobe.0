Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81E8D3FE6
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647798084;
	h=To:Subject:From:Message-Id:Date;
	bh=0kj6ITjl+U02tiKVrIFdO8DSTKyZ1Tad1WBhANCsaLU=;
	b=UVYvJrxACvbvFCOrltFhpg/GXTQoUTmUtwdVvVcqgClXstdHZjMYLuX9xNLcp28z
	4NgENlvnQuy3ry8P1+SjnN49A4+uvNkLVU6iDsDuUFfLqOsoe2a67AgpQ+vlBSxUMOl
	6PNS7KJ4Rb7Dhh+W694yqJNJjTJpPupztZ/FPHT0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647798084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0kj6ITjl+U02tiKVrIFdO8DSTKyZ1Tad1WBhANCsaLU=;
	b=CBgiR8Zf3gL9j43/GwZqq75NRpLDCADpn0nBSA67TXYf1M/0evHE3nJ7rnd/z1Zr
	jp8w3bnf+Iv3GWICsFFu25LSv0LDD6WtZIXZsUEbFvWFmDved1Ng2fWQ12ZDysA4/eJ
	rES+e+v+NExU1RoJj+m2114+AB1hHeOtGdjjEolk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa86b6479-920ecaab-35e0-450f-b8a8-207811127aae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 774cf8c34c0c587ee2ec20c26e30a437dd9462459e9eced2413282eceeba68d2
Date: Sun, 20 Mar 2022 17:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647798084
