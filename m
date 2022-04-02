Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1DF10E8
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 05:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648877758;
	h=To:Subject:From:Message-Id:Date;
	bh=zQisEhWr/7QR5kcyL005mNxyEMjknOVp/VBHsf0tStA=;
	b=Ivv6yZt8gCdlqIspnGc/1VcjfWqoiw30zpoHsIUPC32b//efVTkZzQvcQJbdLIn0
	cNjQyyk/knwW8D62w0Ppg3sB+VembbEsS2AEkX3E74gr0+NoEj/jABvnr04F+xcoqLl
	dbE3xPDAH35j597JtmNO4jDOxjuFeWnYXFKuP86Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648877758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zQisEhWr/7QR5kcyL005mNxyEMjknOVp/VBHsf0tStA=;
	b=WWWaYqKwmGYrwGKsZSbNJhaYvBl5UnbYrjDp1TB2lzKvgFTxiEVAlnKuSwvJiDWy
	DrFnWTIt1Y2WWfpA2uUWBCU1EedKF4wswBwuzzjsZe37aidT//JuH8PFTjRPKyC6z1V
	Hq3RKelfqHBK7cauxWEkSV+5F6FnZV4BmH/+3xzA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe8c5e71d-8ae34fb9-5990-48a1-a056-dd439fe0c75a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2fef54ea61d5615179afc55e29139e374518c5d2fa19282ce250a0dca054f6e8
Date: Sat, 2 Apr 2022 05:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648877757
