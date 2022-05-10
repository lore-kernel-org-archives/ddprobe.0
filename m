Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04DE47B
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 02:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652150099;
	h=To:Subject:From:Message-Id:Date;
	bh=zRjJtd3eltP4THoavsiIdshgq+AlVtnC5DaDZ5iqj/E=;
	b=TpryB8u/W6L81yMOTiM5ZcKD9vNgjYGADTcSAwGoFxonLaVNlvRL+95VJJjOIhxV
	LZuvsdZ5P5dHmSXtalj/WhdD1o0WrVRh9f/QkQBqXAgeAKybhyVG3/kxqchySYB0HPK
	/s4FRiUWCmarpCxFKhR/qNZTpog/jl60UbCTqOl0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652150099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zRjJtd3eltP4THoavsiIdshgq+AlVtnC5DaDZ5iqj/E=;
	b=HdrKP1ZLjk9zYM0zwFKB2AMyqBOncJen2H+xmmtKyi88bkX591gSQTpgXO5Z1QSG
	cfAE+a2vl41gxynQZuXDMi2HubZbeYBxWe5nr6VunSsSHt1AvQnL2zr7ECvsFEfRFNG
	QxR6kRw0HrqP3VGSVmIwSznS4xLsDiRHN6/ZbJqU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180abd1dd93-ae0b77ad-793b-4e90-8af7-5c49a6e614e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 983e9494fb7c5f1d0dcfddaeab6cde2799eff8009fa9284f13b8b438defa63ce
Date: Tue, 10 May 2022 02:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652150099
