Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C7CA54
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 11:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647947789;
	h=To:Subject:From:Message-Id:Date;
	bh=crg/8taVGyvvyXxc/mBeC972R6cM5IxauryZK73aSIc=;
	b=TqU15TOsUrP8LlQObbOauxIU49wY9XajG5Q8gva/bfMwugKubxLkJ7f6syH1Yn6i
	1xuKSqcdd1zmDy9cJFHgN2HDHGwAAB1GewNExzSLLKa7RDJ3c1prORUGDrHJ/T9qnn3
	BRGkgosiEafvVeglu3NITYLj5a726vxY6j114W2Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647947789;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=crg/8taVGyvvyXxc/mBeC972R6cM5IxauryZK73aSIc=;
	b=bfrh4eI0+xlxgd1R8jXQVO+nbau01PwWIuBjcjN9q1126C3O5HksZuRKWmTy1drS
	WhP5x3S4/zxZCX62xjIiAfxw/wNfTFsi8+CHnveWXe2wQFNczBjvl70YGnZljnlBorL
	7s6iV7ICbCq0700ofCDaW8mXv7KYR5kk9zNqxuf4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb157a246-dfda3e21-287e-4818-ac29-f48336e00b91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e2f35b34beb178febf106d0fc849920a4ba942a250e436ceb10178f18676ab7
Date: Tue, 22 Mar 2022 11:16:29 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647947784
