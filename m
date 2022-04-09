Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B31621
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 10:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649501098;
	h=To:Subject:From:Message-Id:Date;
	bh=LMll/ThFdfXWcEUyBRFjJY9i2il99dHQ6CDe3jYNd44=;
	b=Ml866zQMM64OpQhRIbjJktsKWtboi7ZH0zOnZIvvYgdcmMN4w5uJXI55FlE4IYPO
	ZD7ogbJ7BfZr3Ik/Ld9/C6rqcBJZtPryx2lhtfl63f5WehQMjaWoHNifdV32CEN0fAL
	VikeT8mEzbE6yqPx4+t9wEuQyTKSOgdil61XQ87U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649501098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LMll/ThFdfXWcEUyBRFjJY9i2il99dHQ6CDe3jYNd44=;
	b=YqFmJk/EuiHablRyY1/Pwfkf6u9+5oCZqW3BHgrHNCbk+3w62Ah42YA89HORETOw
	rn/3eI8Jw7h6cIBXXQ9mfkDVbdKt8AMwrxPL8NJBWeTw27D4QjjI0DkiLruoR+H9FCs
	PSrZF0HJHNam5L5h8mbzlnmUOXnSXe0S0jN9oilM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800ded5118-7fce8e17-c14b-40d3-bc44-2da4728ec9f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6565fc7eafb4556354c3858136c639209b3999de0edfad1af946f17ba6d80c31
Date: Sat, 9 Apr 2022 10:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649501098
