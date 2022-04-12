Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEE311363
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 00:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649723459;
	h=To:Subject:From:Message-Id:Date;
	bh=X3XYm5ODpZawSNLTqV4S2tfmom7VOFno7EBEU7UQee8=;
	b=cftFnXVn5/0RK6pfEd0QmSHcSmhMyIQnTp/lV+fJT+KRGk+DhTnRq8iMVVq8P66M
	DLObS4bm3XLDE+ZuKJrh+WdDveYmA4iz4wyEQ8vECr5PwN3w7sLY1FCvfWfI27d8LdA
	+qc5ldX2HGNkGQAS3tqG2lNAOcZ18V2jaSZYaUHQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649723459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X3XYm5ODpZawSNLTqV4S2tfmom7VOFno7EBEU7UQee8=;
	b=L+kXSlT43ZdkRgAcDOJe/SoXHNeIgF2MMTlt15jvKcDlOCvIuI0tRI5BG7A2AHvo
	GJQa58adHjkmPHX90pF2qJnb95jtR0AY7CeLRR4aEMU1XPwUEuVtgFJGX1rJXujrpBx
	4phSpm5ZIW5SL6mb0fYumFaakKjtGdUv2crgYu5k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801b2e430d-ebb96826-d68b-4abc-b360-683cb0223b76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b6980691c8bacd0bb867bcf7e7c30f2b1d8930b39b626b600a40859586dd2de
Date: Tue, 12 Apr 2022 00:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649723458
