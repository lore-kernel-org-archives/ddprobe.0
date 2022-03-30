Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC1C7B
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 15:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648652458;
	h=To:Subject:From:Message-Id:Date;
	bh=xoz/4FrSkzbBVw6jBnMYnKEwKl3bJiWHIwwmBijefnA=;
	b=HozglEg68Ejkn6s9iOtJN3mz/akIQxmCoYr8sGafYEcIWu1v7STnOk1Ml51O5xKF
	4/zRa6dzSBUAFXx2uJ1NADdwygH1hDBZUpPGklMshvqmAK5fqNkSA2mEPpoIEN5yHRg
	Avt6s/Aomcx9EUh9/pvDr0s5odPp3NdB8gVjA3F8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648652458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xoz/4FrSkzbBVw6jBnMYnKEwKl3bJiWHIwwmBijefnA=;
	b=hMVF87d5KtwPkSXFyRectNxD28RM+RuOiARLtxKaq6hEPUfW/bJTKElhh5ruWVMS
	rMWv3CaLb8W19FYNHmJT1eeuXjkN2ApmnzH8HitNWVO5+wzW2Y/FPZUP8JurX7sB9aE
	nTT+5damxzjzclJqm8hBQpjlwb6CI5w7Zq3tEubI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdb581910-5f2fee83-c157-4db4-b499-7a8df19e01a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 623fd43f7c658cbe8cde2ef7ea4e04626746c329bd9132638ee4870d0603378d
Date: Wed, 30 Mar 2022 15:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648652458
