Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C56E417E
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 14:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647699085;
	h=To:Subject:From:Message-Id:Date;
	bh=cTDx8laA/QeRDWSh/aFFKr0EFO0kKdjUhuYPWzlKZ5E=;
	b=BhMaAe9Xb4BYj/ZWMbFG4e+WrUSHvdL6yiyH1B6RHxXVmV3LugdCUD+ud6ydv7ft
	CLWz/EYNX0Im//WYxFq0Li2CA/fiqgLb67UD5x8Y6FeCsq5nr9NVLAgv0kOayiOY8NX
	dKe0xj5T1zwTjl/gKr8Q04OhcFKoVzL2oeM/Dumk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647699085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cTDx8laA/QeRDWSh/aFFKr0EFO0kKdjUhuYPWzlKZ5E=;
	b=KGKidua3j4UlTaaHEwpl9Tq3hLJDbaSajNFFQX/gF6ah3yoiz16jABuDjzICljqF
	d3bb6MxyDSDA+V42sv6l7JIuhPYrbFUtjCqKHuizCYnOyLLFi/QwWTqnd5tABw5KHQX
	itTMIgWqNxmTZzTADlkfz8nDiwjPs6wta8zDNWqE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa284c5bc-b16c64d5-aebd-441d-9d3c-40b23bd182f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2f698b424cf8058fdeb0c09e6d6b46a67f55fa26d8e1a69c50bfebad05079a8
Date: Sat, 19 Mar 2022 14:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647699084
