Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1063763E
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 13:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649423758;
	h=To:Subject:From:Message-Id:Date;
	bh=AF6prST1HLuHASZ2pIHU56AAfBOCaAj+OvnFaaXGjK0=;
	b=ITgR21zqZ2OHx6cMurUmDfA3PGviktrpoiNpJx6nsvNCo7ux9DHcFNfh9H8uo/Za
	NmzdWyWEkBgF59ZObO0Ouqgl3wcPPrCeoNvXVKUMyzKppR4NWTYG04s7r1spIZjY8Aq
	BVGOlSZPY4qRoDqOeR5dmkGEmtCgWlq0ctLZlWGI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649423758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AF6prST1HLuHASZ2pIHU56AAfBOCaAj+OvnFaaXGjK0=;
	b=EVA0BvgwGrzbXLT3zvRHk1gAZ71jtT1Ugay458ekS9O92eYVv48u609c6LnK3PoP
	oYOIdrYH+1HRDrA3ON1Ya0jgwUcNbBx89ZmxtChv+aCf8nCPMMvQC4nKhRQ7P5UbNmo
	3bBpcXQA7fQeI1D6CmDlcTgQ36qUSSsGeLMYQFvs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180095133f7-30bc051e-505f-4f2e-b44e-6f1813aa07c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 307c1ff3f3904d6716a2687cc67cfd48589eb4298e0d93e85eacc352fc1f7a4a
Date: Fri, 8 Apr 2022 13:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649423758
