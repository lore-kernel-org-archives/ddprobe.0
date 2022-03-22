Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 946B1C6A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 16:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647966384;
	h=To:Subject:From:Message-Id:Date;
	bh=OxF/7i34AYjqncBLSGQmBQ3HIJjsH9+iU/YRj2phpjk=;
	b=OuDhLGZxg4ng3foYgD2rVfKhZ/tDf5Ct2cLZ9rrSlDRTVI4QJmajkMS58DsgjGSD
	d5z1FIth8icKoj7dA8hN4llwRVh31Sal8KufHh1VPhE3I0/OaESJGDPwhgWuOVSs89t
	FNrQynyGfkXnuk60m09xFA0dP3anbnolIf+XnXv0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647966384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OxF/7i34AYjqncBLSGQmBQ3HIJjsH9+iU/YRj2phpjk=;
	b=d3w/gp2PPMnLjzWWKW7UqOYh3p1KQI9us1aCHtglkHxDVzuKvAMjX3+oK/fHB6Ro
	xvgdaa4fnZbZK6qW2zchMm5RLD5FwaRqhYpHbaF1ma3+j0zXKzvaytpf2qRPvHjlbSJ
	mvRVNcRJEi98l1NE3pfYCP1i7eWT9cNUQo5Zttj0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb273727c-f2d69c60-1aa6-4ac3-b3d3-e7a8888c57f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0a224787a65cd3095a92197b48916748886555822266328bc53a00a1eb0ebc2
Date: Tue, 22 Mar 2022 16:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647966384
