Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0FC72F38
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 10:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647514285;
	h=To:Subject:From:Message-Id:Date;
	bh=VtqcJKCW1g7iIuSvhmBRqmEIWTbYm2ZgBd1BmMyZWgQ=;
	b=leXFL6AxO9VWl1RrFvmLeNvo15Eom5IXbzKZYaz77WwV12AJEQ9f3ly3hGY39zOa
	lGRZrBrRaLVEOm0GW/VR8qyOGShfD65wVvfne144MgwU7PIoZDRgIAoQovk+OqTq6vF
	kLO9UDhnEFUPsvfnkEIezWwQm8Jsk4cOHfQhI0WA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647514285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VtqcJKCW1g7iIuSvhmBRqmEIWTbYm2ZgBd1BmMyZWgQ=;
	b=VwyQ/mDwVOa2blNPqRqX8b3e2O8KxIC+n829qRQ65ZdhLjkbcJW+9RTTImgMuS3f
	3QHRx5Ji3ySdidc3+XPvPcPy4qskCa9wngSAdxtMn+1HbZrLRyh6klq5+g9dH2jaO/C
	oRrB+kEAbNf8zedCwLVjUe+u2MlBYMxrkCktTIgA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9780f2b3-b53ba49a-7bfe-46ae-8b2c-e94da5793b71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da68704f931407545460ee8dc3e2905a1779762de1107762a36e63f7902a5a03
Date: Thu, 17 Mar 2022 10:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647514284
