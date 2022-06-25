Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26106290B
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 18:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656180412;
	h=To:Subject:From:Message-Id:Date;
	bh=wB88G33iNoz6U5DFed5wtFIM8g2EEDtFAR1FSko9wHo=;
	b=I5LBGW0tzs8e+xSSZincfN/mw+o07LL1pQqZ0Ew7fHZJAuWJJlA9U8ZXXHEWl9dg
	8v1WrEvo/z4v4P25qrgdND4mVXV+ra0uh5r2CtKpPZ9NTIqV+IEMiru/QEVjGQB+zaP
	U33ebtw3KfGrZ6xArCnjbQsaioGdGhPyfgGQFyC0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656180412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wB88G33iNoz6U5DFed5wtFIM8g2EEDtFAR1FSko9wHo=;
	b=PtrlUQ35sCph472vqfrwf01oILWLHKTtfqLUzx4nUqG/opWvbtR73zBPrv//Ho38
	/DUYUrah1pvxfPAf8pmJNBZDDMa93NsYZFyE6W03Oa70+aRYNi3OBYtP7pmihM6LQa8
	Rjzo07ETPWoFvUl2n5q4KubHG2+cC9P72g8uCc2g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819c0b8fad-b734cd87-8fbf-4648-9d2f-8d8a8c0e477d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90c8941604edc6ca0a1837838ed59c9b663782735e2ed1df8014cd4062802095
Date: Sat, 25 Jun 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656180412
