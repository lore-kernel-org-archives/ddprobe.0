Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7357E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 01:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646960485;
	h=To:Subject:From:Message-Id:Date;
	bh=hYTW7D0M7lUJnC+pl7Ghnww16kZfbwrm+QqvzoqEleA=;
	b=Z0hPi11ZgWHdhteiqXKiyKDIVqHVoQuTC6YqnoMAQb9uBajtwYzA1sHZXZqrspYo
	oERKaF8HyXmeNGvXye0km+Z1L2NO+FjyRsQBYsWNU5vQvtIUExVZgFEuP+5MOqiXlTE
	L//R47UHPlYKkLBuO41qkR91uPOlRODJl0CNEy+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646960485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hYTW7D0M7lUJnC+pl7Ghnww16kZfbwrm+QqvzoqEleA=;
	b=ZCWipxVwE5hx8bljlorekiguOK0mQe54KRCH84c4pa17TKzJ6KVSMOFzMLqHr1O5
	yPgJYSUX0wIU8JHObM9MGKKuP/Cv/9JXlSGclrPujVeUSb4KSLxkGMDH4uDOOp9K+2v
	uo8s96ntT7cD5z6aNIuyNNlTNnIXYDD6XhDq7rwE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f767ea1c4-3d1f1c44-d58d-4da3-9dc2-f0afd233377c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ae52558f53668ecef622a07e8cf273b22066db480c9c8c0cbc8296a78b793b7
Date: Fri, 11 Mar 2022 01:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646960484
