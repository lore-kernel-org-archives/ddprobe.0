Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE96F7F4
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 08:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651826458;
	h=To:Subject:From:Message-Id:Date;
	bh=ygozuytpCZE82zjLL1zo0YBOQXr37niE8pShBgQkWyg=;
	b=gAMoG/PT75X8xTlCUVhxt+y+kRwcTi2QZH/bpPHieWf8+RIbLW4Ca7Yh8Fc2Fd/2
	6aE0/pTuCqKkBzLBzZncnZBUyX8B0ieta4ks+wo5jlD+PHJf+1DclppBsvtOtAsVDFn
	hZSh2rpuH8iGQbP/iPil5Z1doPIXdrzxBS7hu2FA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651826458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ygozuytpCZE82zjLL1zo0YBOQXr37niE8pShBgQkWyg=;
	b=NZv5Zl75L6bLrVl5917H9SCqMrsVzZdesY9PkMZNb69Tx9LWoPsU2RaFTnT6yA3n
	MTi+NAZaC3rMMIrM7XL0d6XNgi9TPqhbK6T5sM8udHadWVdkBm+XdgNseZemL6WFqe+
	WLTFqdpFPeO8RibwVv7c7XLDste+N0WiEBnxzego=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018098877e8a-9b805c76-4e4e-4b7a-b4c6-e4c605ca0a70-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de720044f9ff093d1a389bc02d182151a63702129d4df2bc859a056059a78cf8
Date: Fri, 6 May 2022 08:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651826458
