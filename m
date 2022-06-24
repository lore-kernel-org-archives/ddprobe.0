Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A335C23A1
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 18:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656096413;
	h=To:Subject:From:Message-Id:Date;
	bh=9ZOkFo/spnw7aQCETZKFDfmdiHDn+LsPYyIun17Feww=;
	b=aRlVKhVivJsjFEBykcsiS9dtH31hPWkJJgADJ5cSpmcNZQuO0XTeace+F098ePAg
	ESR0AYR1Z1jDV+HJkHYdMLqwWQHJiGD2M4pz/KCVc2meGFmte9MEcOFkP542cFyw17j
	WrXsNi+B834JXth8bacorsBeYa/AmmxhZe6nHjbY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656096413;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9ZOkFo/spnw7aQCETZKFDfmdiHDn+LsPYyIun17Feww=;
	b=cqZ8Vgwq9vILh8NS2rDt9SFhKKunsZNVytZtJR0ul1TS3Okb+ALPgpnxAgIJosOz
	rsaS04jBc1xkRBVP8bkTGCXHhT85o6rOJEP6IU0MH7JDpKN44Z3yohzUHHiv6WINkml
	sg3SZcx6WVy/36VD5IA+mnyQS5QiRE1W3Euc2TvU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819709d271-33edc473-55d1-44fb-bcf4-50f1a3f7804f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2602ee6c4e20202d0586b6fca143f131eae71a2c44eb4c42a89f16bf471103f2
Date: Fri, 24 Jun 2022 18:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656096412
