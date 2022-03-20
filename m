Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1BB17A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 09:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647768685;
	h=To:Subject:From:Message-Id:Date;
	bh=PlcpNi9u8DGslGYIyXwc/jMF8p/D1Ca3VsPd+HzKCTk=;
	b=muK858oWKaGpfFzfuOwxC8LoaFAyKdPrmZeGtUijoGqGeBc7Kc+MmaGYXeAloW1S
	udoJfur06WMGjCuXjlS8KVZtsXp67IBsOOdJcznZAC3HE+TwK6PAnuXz6hyU1+i0Kp8
	kSX94khLgjVuViP1kPa7+Nko2oWlVpojUrISxAPQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647768685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PlcpNi9u8DGslGYIyXwc/jMF8p/D1Ca3VsPd+HzKCTk=;
	b=NaIUptN1Zw+TWZXeOF4C7sTxJsVW7u4zSCx/i1VBx9SZ9Kef/FCXLs79pvlUSEMW
	5ljgelgYXnV2e2y3j+nlaaolR++36NdEtjocoqvysWifNC14X9xNzOhlRx9E9PX59+g
	3j3ofjF6GWAC8PojGdayHVZzGVCFlR2K+LjUVAh4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa6aac8c0-f1b83073-2e43-491d-8b73-3eb94bbce681-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a1da03ad72bddb522f414c2773fd0515813dae4228abb5195ff8e2a1505911d
Date: Sun, 20 Mar 2022 09:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647768684
