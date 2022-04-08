Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47893632
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 11:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649416798;
	h=To:Subject:From:Message-Id:Date;
	bh=TCFZn/Hmcfm6nrzS37gdDrw8ZlIGmi+vUa99moAPof8=;
	b=mzKD4KG4Z5wefpH8ruvPjhLAyxvtig+5Kp9unJvrw7BQU65W/34JYggK3q+aFGhQ
	ZmoiR3SuEKyL2MrE1wbUct1kDepLUKvSLo9dc2U///wNG8+zqEfu06vSA/chIrYTfaT
	3S2b9Mjh3J5VdijJWYViempIxYgmh+jvUCkw8pdc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649416798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TCFZn/Hmcfm6nrzS37gdDrw8ZlIGmi+vUa99moAPof8=;
	b=QdXLfIUsXTrQ7VN7Ekkd9D2nBt71HrwKssGhHqRs9rHQTWhsOlv/dLhfanUU2pT+
	lqzr968R0CSLH9eD1Ds6wdTmWgKlTJ3keq5kKbPnAtBEdHaDbw35AicZYV16om2YJvY
	DARwEyJ8qu3RF7Tql4wBMtPRn3yU/Lfnda4f+uos=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018008e70035-dd0317ac-5872-45d1-9075-0bc5fa3f3fd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f7b7ebd2bae33ade1675cadeacf786b22248b7dcbe2bbe192a3a30ef4f5ac10
Date: Fri, 8 Apr 2022 11:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649416798
