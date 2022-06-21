Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05862EA4
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 16:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655830259;
	h=To:Subject:From:Message-Id:Date;
	bh=MgHoxC957XwgUH3psFHMnBvOQiqDesdWwTHit45mwPc=;
	b=b/pX8TzSh+9UNrNDzDEb40RcOG/IS7/5GANpbY1BhV/j8aY7tsV/BYUOyqYKI7Gy
	z+usGvUBMFuovMF1m1F1s1urrXTvi8DiSdP9IbGxr5RHhOh8jTcXXo0XQNIJo82HDRw
	Vw7jZvY2cyOmZ4/rrDXjDbmUbpTMupWeBQCCy2Qk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655830259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MgHoxC957XwgUH3psFHMnBvOQiqDesdWwTHit45mwPc=;
	b=T2zgNPJ35/8fg6clNnrfeycUZwWJ/XeH6A0UtM8x5DqtNPuG+OQ+wh2pR9RQv9fE
	Jw54D4E1zkX88STuvAkVemJ2Y3WoDJ/5f/73XfmP3ibRnIgv/KceCAFa1zVZP7sb78N
	tC4mvdBua1gpHrTJDe8Ktq69QIaPazv7bqNBsDfc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181872ca61c-32025de0-3c80-4c23-91a3-e74a9d35fc72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97dfbe2c43e7ecdedbf1cc6dc0b60405c6e6bbefd443f2f30bd9e5fdbf789c4a
Date: Tue, 21 Jun 2022 16:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655830259
