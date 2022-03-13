Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83A4C62A
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 02:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647138084;
	h=To:Subject:From:Message-Id:Date;
	bh=Lj15jrxHAvVuZhwB9NO8Pd20B/LIaJaRUDEsrB/lUsw=;
	b=kE5KbgD5fjWk0YyN9VK/YhH4UJ5GpJb3FjHkk6vFp6V2dbHSJGf3ZVepo9mjboiN
	cjKlEGd/icj2tFUeOu2x9l0805c6LQys0mDN4joeOeN+YfVBhkAoCi5zaF8lw2jsPUz
	iFjVk2mIX6WXJHclu0SDATAqY1zH7KQPImwJvfhc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647138084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lj15jrxHAvVuZhwB9NO8Pd20B/LIaJaRUDEsrB/lUsw=;
	b=FL1AanGvKD5KopEyONqNp5OTG0at1DE8RD1pyKvD0BUvQMBxX0wMbsM9ZBryDIhB
	ptd0XD2UstPxU21Jj9wRBNsPxoYxAQ3xKzJt2tneW07gYtYSEhGx+OwOsU0daHkZqkO
	OYyfMmRGIIw5OVCI131FPK6yFxFY9LfKVth+6VWk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8114979e-ef46e38b-08f3-4b08-af3b-e205b5757511-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9fdd70120b8707f7f570f3a4a00605b3aebe8906ff708c54c34f8183d69b90a
Date: Sun, 13 Mar 2022 02:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647138084
