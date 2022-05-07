Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84874EA8
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 17:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651944478;
	h=To:Subject:From:Message-Id:Date;
	bh=h5zzYHu0vHUvP47pKwoY2+XTlSUml9Au6BPPy+xnoKc=;
	b=I+aQIsZz/1Ar3nZnIskRc+mvW4Mw3JYy6QES3MxcX9+6xnkMz29d8Rzzt1n/abQV
	ByUcMPndZc7q0ZQ5K0lg9NzCkVIA+33MY/ulO4c6O5cqZznFh+M1Utc0dH1j56lXY2T
	SZVOjBUaRMgR3CGExUU/IxUUyrLHpC1HYNf1s248=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651944478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h5zzYHu0vHUvP47pKwoY2+XTlSUml9Au6BPPy+xnoKc=;
	b=BJSW6wX3b0LVI5k2pk/tFtSPxybPuFLyi065ZvhXOwQb7GoscfUWJeRDddvoedBN
	+6e6G2xoSUa6jc2nyKmJSxK73s8AiMA1T4G3CoyxBMgEUnSJNHhKbTja71Nhy8E4967
	qedzfD4uGydRuw8brAmeq8xJ0o9H0ta2TyvekDj8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809f905662-3bfaf7b4-5232-4ba9-a0d0-8a8e01bf55e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a507afb5ed6848694cb7ba5a19f9717a76f000f0626f9dcea699819dba5feb8f
Date: Sat, 7 May 2022 17:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651944478
