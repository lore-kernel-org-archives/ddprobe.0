Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DB123B2
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 06:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647410785;
	h=To:Subject:From:Message-Id:Date;
	bh=gUMYqhuB8a4Fv1TUxjP0hHlE+eCE/52sYolAjHgoasE=;
	b=GwO6fCG4EB94SVp5ul+nm03dexH4AApg4bYhFr+a3I9IgUVbaixdysGEE7VDceD5
	qvQR+p7s7xbKhOWSW2CW7mS/2ZHgQ9+dQCVBneusAELUTFZbHqm0ycJtAYeSWN2984t
	tFFTYYkm5504o6LZfnVL3IULc669FSUsVqQ3gC2Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647410785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gUMYqhuB8a4Fv1TUxjP0hHlE+eCE/52sYolAjHgoasE=;
	b=Qqrg7Pa8AI/ZTLbS6ze8kLDCjSgWeTr+okYdXgQcmXVZHRwDJjYPnU2hBGrg2llD
	WAudGmXmuCz/ciGaH/VfY7j/Z/EXw80kGXbcA0dL5bABLxRRrnHSq9tGQ/dKLy/WdvT
	9Tzi1vitMUwzYJv+b6fKN2PnwfbiG4O7WWJiZoC4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9155aa03-8024746f-8884-4a99-8446-b1930bb360b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e9d4f48ff3e8f3e35fec01f1bffcf20753e52d86c345dd8758f5b40029e0f22
Date: Wed, 16 Mar 2022 06:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647410784
