Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0064A81
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 11:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647603985;
	h=To:Subject:From:Message-Id:Date;
	bh=RVeXi314pVMX6OQMIY8xHjcw51n3PlN1jX1yr/8aGv4=;
	b=maUM35jXW4DYCNPxE6Nn8lj12tVECHOasfW/KroqdqmV6wSNilLSfdJmXwOF+a0x
	s/zuoawf7g1UwvCLAcYI6EQC9QDeHM866h+UQH0ey3NBhfmQjOrJGuCTvq+g+rycszr
	8sXwJFWwbg4opKVXC8DbM07YxocZyG1ImPYlC6EM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647603985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RVeXi314pVMX6OQMIY8xHjcw51n3PlN1jX1yr/8aGv4=;
	b=X8C651sHJ3ExSeUJQVoaQx5LMK9y37AOZqz1t9wexaPgk7acWtPmKg3QUZ0jFW83
	kyxzkyvgz0yXgRPSLMVe0xiYG4NIrw8BIsDTeLSMMBPqhZw9I3osYOQo+WVsKT6rpaL
	7Ka/ZIXuGSrDlMGEVUu5oWzEZgErujkTfi8T6fG0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9cd9a95c-5c8ee3f4-e4d7-425b-9762-bf876cc5037c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60d1cd26fdc361776f0c42bd4ea0351a9e2c414d114299d7ac347d03d722e6ae
Date: Fri, 18 Mar 2022 11:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647603984
