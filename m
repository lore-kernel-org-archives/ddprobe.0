Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3141AED8
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 13:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657372612;
	h=To:Subject:From:Message-Id:Date;
	bh=NYQb7Sjal/9CjWpgE3Z5Ylej54gVEW+QIPtCTpbIQV4=;
	b=RKlHuvnZMQqFDJyNUay0Qlh9zXHvwyu/RxK0wmgxTh32M3TO8kfKd4vZWMn9z7Lj
	J0hZZKlq2nFHR1hkDP9T1tIaxGHPH/BV9Jpk/ouyPFJjhkIYtrFUZG6hBctK2DsFk1J
	KaAa1sIkMvI9062Zy3vFlVGUpvOD7KCaqaBgKcNc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657372612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NYQb7Sjal/9CjWpgE3Z5Ylej54gVEW+QIPtCTpbIQV4=;
	b=JXMT+pxssEdRnKr2A0ZWDlO6xiwsobKinj5Cr9XdKaEw2E4MJWDYu43POlBx9GPF
	oLawUyCZ1I7orN2gN/R90tnxL9pV1I+VG4/2ElVh6aZytL+Pmhjl+koiFWzDyG6nPDR
	l8y7swUW1fjMDxG+eNGmHQnyAYa5XQsVn0AFV/tg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e31b16fc-e2ebb54e-7739-4d71-a384-17ed9b8e79a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea383c3dd6b238c3dc67e01c4812a291ae8cd1c65f84acaf7c07d13871586d97
Date: Sat, 9 Jul 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657372612
