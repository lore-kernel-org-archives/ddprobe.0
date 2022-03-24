Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD6B10ED
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 04:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648095358;
	h=To:Subject:From:Message-Id:Date;
	bh=+Vbw+EBhhW0DXjPHtVHqY7tBfOWEjWR1eDTAu1Bygvg=;
	b=b7QcVdZqXsRkD5p1AByOFqBFycQ+FZeIFVUY9q6ZFSTPUBGrKALxpVll1zVCmxy0
	MMOOUJkBesJAj7IwquCYVsF5hy5tvkjwEy5BDI7tH5bHhPyfEGqxsOjK4vZ7/tu+po4
	zqyyUkr79FdP81O1NzKRfhY/LngOCtTyc7w4txMo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648095358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+Vbw+EBhhW0DXjPHtVHqY7tBfOWEjWR1eDTAu1Bygvg=;
	b=ZwhZ6Lw9nmj4hY0YpXin5xX51Ulq8UT5U2JKqBPXR3T6VukKa3z2T1kowxUtcuj0
	580LZXEBq+RBybCZcpfaGGAB3WErEtN8hojhGpZWrn/MnDYr5DUBRMOX4aePpjl3UlB
	SsxoWEwEmIdXuFY41XpS4AXTfP7WstYOZ2XLb7G8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fba236d02-ef5f2bba-7d3e-4bec-81ef-ec74bbe34082-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ebddb8e63f213b64d958b83dff9b76b2e3b8b46f124b28b4eb332f959d5f017e
Date: Thu, 24 Mar 2022 04:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648095358
