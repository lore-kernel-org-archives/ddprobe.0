Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B52B4350
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 07:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647589884;
	h=To:Subject:From:Message-Id:Date;
	bh=px1mNbdHLWd5T+ut8f16pYjvnpnNOriC9QsmOomcVWs=;
	b=Md+wdvoHYIHPJWigb+SPyEUwMGVUpIq7ljVvqYcz1IYbf2+wiL3Bzz287auOHFsa
	wO0Dg9ZmGe2uvzaQj6AkCRXvaT5MCEzQH5cktJ8fEjmu/LJru9Ki1PuMH7tAh9XRVGz
	ngUu8N4r0ZeCZjQXVNDPc6+ymjAIPe1qpEacH+VQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647589884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=px1mNbdHLWd5T+ut8f16pYjvnpnNOriC9QsmOomcVWs=;
	b=f6jWRs+SHIrBls/dDJ8NTLZ9ganL39Hg/KLH9K2pRcHnEXMTkNlWLThB6M3ciFOp
	5WgRNrwMlIDsMOQmmCyJ6DWQgTyPreDCsn0BFgpZGdhQNJMW1nAHvld2z43jRK0lZgV
	h0ZzDWrbYbkw5Qf9D6gN/k+akmi5+d9WWXp57mdg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c02837d-84020172-5812-4dbd-a3dc-978b6acf3c5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60c4ee99cab3ca7b90d370f56973dd6c2246cb11e037e6f62c55dd4b5ec0d6f4
Date: Fri, 18 Mar 2022 07:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647589884
