Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2755D1B60
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 08:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648109938;
	h=To:Subject:From:Message-Id:Date;
	bh=wd4UkY4YQ4T6D/e71UAX0O/yw0+yfgls/W95etKEkS4=;
	b=PHZ6sjJew5J7mSBaxIyWFqu7vmFTCrNsdhZ/DAKhizericckpnsK+qXTV0xbg2Id
	INOOU7Z6iGIdwKbQsYel5PhcO0NcoaSHPbrz16mjd2wnCEYriEqyvSyQtjfFiHWarCr
	XRhoNs7TPiAcXi6tSVUpd2gwwBbAntYvqenmRHEE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648109938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wd4UkY4YQ4T6D/e71UAX0O/yw0+yfgls/W95etKEkS4=;
	b=O9hzY+AftqjxwU9NIXvB6yOpBHRGKZICaQSIUJJtnC/v9+0sP1o2O4NEmQYcs/O9
	i7VjH5q9gJhGRjn2GPOAPpvLIePxJ5n9kEH0bm4uNrvlaMg+G5ix20bkiV3DOb8R2ip
	73DZIY7z239/czAyTJ9JIoGhX7wFeZC2bNFfHOoU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbb01e66a-e8c14e18-8353-47b4-bf9e-4ace74620650-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a5c9da43b0ff2db415a714b72c3991fee85cd26b7d28489149d5625c186e5a3
Date: Thu, 24 Mar 2022 08:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648109938
