Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F877D
	for <ddprobe@lists.linux.dev>; Fri, 11 Feb 2022 20:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644612042;
	h=To:Subject:From:Message-Id:Date;
	bh=rE43QT1IyNFi7err8u3E8qIIVF/r5Tv3N5ebOJ3ZeY8=;
	b=fcdNcAUF21XbWW6icg5AipfMV4YF4JoL4MpYvW7gKN7Ft9YouOU7pMi8ABQkFAnA
	t9wDM5MUpSv5GRKkkWIuSjxb8RCI+oQVGeAuZf+SL67EMrriVaBsbkc5WJFRBiadaa9
	1b229w9I/8MkIy3tAA/etB1fRzeY2bpULLmy3/AQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644612042;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rE43QT1IyNFi7err8u3E8qIIVF/r5Tv3N5ebOJ3ZeY8=;
	b=gbhvtWXwFIvBsqjAa9cCHa/b7k1oB+9FlCjWIFrF2JThVsaXXpkWv0Wivj8neg0i
	jAkfdiQGnWDIPishlafMR/WrBw8Ja+85exPyTgCNdjBzTw0BiIBcTRWUxulw2hoyay9
	ISdhMaQJ4+aA3mhCfbK2xx8lO1Y7r3QYSAZ6TdiY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eea843b5d-5539d5b0-d1fc-4efb-a130-a616be1ab8a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f527a01d64f9c37ed08632e1b26fb6b360513d481da635fa4ae086fe43eb527
Date: Fri, 11 Feb 2022 20:40:42 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644612041
