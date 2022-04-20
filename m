Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 741971365
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 10:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650450418;
	h=To:Subject:From:Message-Id:Date;
	bh=fxv0e1Uu7R0dVwbuc0J3kgbKkHWmdxw7F5kw/fRxJQE=;
	b=SbhDtIIN16uNIXxgB7de/PEDV48ribLuPt/9xiNn/r5kSCMm96OsKyWWgCP/ckoo
	vDpxi6MuP7HJkElalrRc2c+AT4fCwxObx1+VFJkx1ZxuPp3uxoxpf6yG4toddTBal4q
	KSboVigc2eWUchdvCSBXa1QlOIoSDs9tf1NxkLW8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650450418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fxv0e1Uu7R0dVwbuc0J3kgbKkHWmdxw7F5kw/fRxJQE=;
	b=ArEanXTnXFCOtAtpWc/tM6+T0lMWHZ/PosBPaGdkJs9xZo7cCp0nL+DsjBR9GUW5
	VFbIQ/D+f8nRQTlos3+RFGFeFMyPd8d95+H+nESFtGyqerxA6kAjk6DRyefCkks4zBV
	KOJbrVHNVivmBoSkEf7Pef6tJUD6nTwJpBWATPiY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804682ca66-565e367b-79ab-4232-8e67-d0cad1ba2e68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc460e1d08a0819050f1c0b424d13aab42420f09a611963003f30f3d3320038d
Date: Wed, 20 Apr 2022 10:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650450418
