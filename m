Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BD84C66
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659569452;
	h=To:Subject:From:Message-Id:Date;
	bh=oFn1+2wKCW2h+3d80ipsfUcpcqXxDr92Yxhy0mzgpAg=;
	b=YqT1EfIdm0PUetzZi1xqxBc5xhi4Ma3diRXy5RG4Z9cihYP64UwbvyrgP/qeL87V
	mmtSKrd/vmguqGtMI9/49QbwPl/m9lM09pnm76tyMU7BJFKbSoz8MvK4AjN2b1YtF8g
	CsNTGfWJO9xf5VNJEHMxRpPDDv1ReVlxa77WujVk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659569452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oFn1+2wKCW2h+3d80ipsfUcpcqXxDr92Yxhy0mzgpAg=;
	b=SS9EijChZWVEwQSiVet4T4X9LPGWCHeMM1MeGbvGdxH4FyToqgESgTul5kxjkOsB
	YJhTF7l6kVGeFgwDc2+K5Q/+1h88LKGjddUHSjx/ado/DGIeeJYNw48z0KXn0A+f+Z9
	xhVC9ZeHEvo5q1fM0peJbO37WGDIRRNxd9C8ZV74=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182660c3613-140f1c78-68b7-45bb-9697-2764c1f698e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32372a8511e36772bf6b9334d779e72c61d49500835752a048a533a81952954f
Date: Wed, 3 Aug 2022 23:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659569452
