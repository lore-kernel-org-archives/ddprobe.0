Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F47929AA
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 19:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650916618;
	h=To:Subject:From:Message-Id:Date;
	bh=vYET5hNYGWG5X02Tf7aFZgIjMPplKJtlpy89MOmN/LU=;
	b=PjYR//sDtuuWzcrcY5apgPvHofuB1x/R1iWcHq+JrHn5Pd8n8B0XRaWBLe0rGq6u
	Y1rsZG8xRRQ1ztKhm+tmIjKM9uQ8sbwObi78ufIQaUrz/xLrqDPh9sVL6/JV2DAQPOQ
	W/Ve/KNOsCnC+TLLqJxenDNjUF7zh/K0FKB3gnu8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650916618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vYET5hNYGWG5X02Tf7aFZgIjMPplKJtlpy89MOmN/LU=;
	b=Fvf3zudzUpi5884+gd3EbwvrPpBomuFOJNxHrbrhQo0OnzN4yI9eg3iCbhVXqof/
	FST8bq6atfV/qedPfGVNO28Ntv23FzEWYLA73n5qrysWvZUvh5/9xFMoGqfSm/HhOdX
	7jX/F/zAfpZeszoiT/X20nK9mwm0OfiQkrnQgHV8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180624c7072-ede45533-db1e-4d73-8557-03481442c79a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9165fe71f9249c7c4ebc71f16654f59d7805fdedd8c0a9123d53a8be07517ba7
Date: Mon, 25 Apr 2022 19:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650916618
