Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAAE3D89
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 20:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657313812;
	h=To:Subject:From:Message-Id:Date;
	bh=7PJspkgnMWZvAzg/I5d98voF5h2VgZnW2YH5xFKu3mU=;
	b=ORuppLBJKqboxY492hEqN2dqglRuloMawlAwhDMqpxxg3oYq5JwXcfXOMXySZOsU
	xRaRqK+LGwQhXkbwBtbd2/53PXO8n4yshAemDlxpJZ03R6H/eVVU6WUagSK5WBcIEwd
	nvSfydww2v6c/r+ntJvYMl4JfH37gomCZC2W3doI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657313812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7PJspkgnMWZvAzg/I5d98voF5h2VgZnW2YH5xFKu3mU=;
	b=glHZXuvcfh9WmHDqUZbTEoCM3gcBsvpyruIcnhJDUMJgbtMRGWd4Yrt+x5a5kdKX
	KXlpanSkTAJMNVBH8axNjC0V2W2/TCoCtKrAEf47Jw74dKYRRoCs+XgWyQnI8qsweT2
	rx+tGxMzuUXtwvNLcHZpdLavV8bO9egdz82ilOEU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181df99df58-b4948c50-b9da-4e6e-a4ef-fb4826e95ced-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20a6982831c064686ef8f6f5a56b5ece803a4470909fd6b38c8f86682653ea78
Date: Fri, 8 Jul 2022 20:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657313812
