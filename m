Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7916A7E3
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647190584;
	h=To:Subject:From:Message-Id:Date;
	bh=6+2P/cM1QAiTJ6TPw/tRX24/AUPbNYmKVQCLL74eqiU=;
	b=OWjQPOeFGumj1xSSiAyOUj7rLLc8/tSrwbYumEIXpeOq64n9R1j+kqZXHuH1OM3M
	Dsmb0yoZ4AC2ljhmjtseDxWD/G0QFDACVJew4y+0qfD3I9kOBW+wYtJASTFzERk7mCH
	UJPkG9I0w6Qi23tGZL3ns3Ed1OtD4dfPWoU+V/Zk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647190584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6+2P/cM1QAiTJ6TPw/tRX24/AUPbNYmKVQCLL74eqiU=;
	b=HZsvDq1mESpyGHVuau0wjym498sifaYajegC9e5O9CAqMIS6qsYMxEada1DhEcEi
	7d/i/mZYaopj9ryg5e9ZdEuZ/eEQEfZGPqhtxKgCeoLLMFUBz/RWv8KWdW93JzKH4TE
	mHepTghMlM2gS90PTXYhyJAAxHpN5QA10d0IFz0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8435adb5-eac1ba3a-131f-4b64-a787-85b4fc8f3037-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 537d85f887147d87584ac92e5bc4e1ad8a82d0b2e5f0e26bd0cb3fb304076297
Date: Sun, 13 Mar 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647190584
