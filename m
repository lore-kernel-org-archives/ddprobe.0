Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A5023BE
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 21:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648158358;
	h=To:Subject:From:Message-Id:Date;
	bh=s0ghHaoNhD/APRSZdUslyMr93IvaEAnI1N7KVYJSPhM=;
	b=Yx8CRoKva+OyKrGtk9eO9axtjzoPEjFJwWzGIJQHjOaFkG7ckRk0vq8BMwGh4RqU
	k9BHh9a/O06bbDZlSQdeAKYaZvyG68y5QMvG+/H0MSFYQEfHam/IUTUY8iqWv5NZZPA
	Hed2jPHvuEHpXsafDXqI7kvh3H/Sbt0EmiX4H86I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648158358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s0ghHaoNhD/APRSZdUslyMr93IvaEAnI1N7KVYJSPhM=;
	b=GjvT/a0xeAY3Wxt3ZwVdgEhZS46GwbLsJ7XZ654dGlKY2jg6p0T7cDo3fwZU+eL5
	FNe1ier2K3GObtYBjumjvZKoCkOXW08qEJShF2kaumJgdNHfQ6Np++Ut3nljw5v7X1Y
	9pfCMg1pW3dGr3Dw8QOrQlxqRx7W4r3u6msPaZao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbde4bb19-75dc2a11-e170-4f31-8d25-3b17711d8294-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01f8152d2449c9ea81ad88e0c576bbef11b1b20bbbc8c2ce30bc47413c03ea75
Date: Thu, 24 Mar 2022 21:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648158358
