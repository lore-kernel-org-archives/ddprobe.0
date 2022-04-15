Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690912F50
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 11:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650020698;
	h=To:Subject:From:Message-Id:Date;
	bh=zi/Pdn839aeNuDYp6nTF1z7tXToNAplCNgMYl7YnneA=;
	b=hes8NnUG0E7FmtnILuxBhUOSEKf8ntzmtGLSlzvp9MQ2S3Cbmh+aS6NWvU7U4ip/
	lF7cCCYIJM79pKErMNo2mwvtPeF3AgQizHjGoszKBH8bzv+29AoWBzokEldInMGyCFz
	Fsc97HSXAK65gWptgIGMDUg+gspjTSnBLLCE4j6U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650020698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zi/Pdn839aeNuDYp6nTF1z7tXToNAplCNgMYl7YnneA=;
	b=KCeov9KZrKu/kKyJP5bBAF2tywSiWliWQhwXrtpZKtZhp/nr5Cu3EHAsX2n1YPhv
	Z+TP22D2dN14MOdYXEHZi17bFkkX3tbDxU8J8Q+u0JVS5Laqt/NccsjbWEbwob7EvLx
	87VScAORPIDVz0Lktdb4pVvzh/CRqIlmxwyfBYmQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802ce5c877-ee7d4083-2ca4-4fcd-b4c9-867f6634e539-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f80273b97db325604f47a65dc01d2f00fba9a5199134d04ebbaa10e8b79accac
Date: Fri, 15 Apr 2022 11:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650020698
