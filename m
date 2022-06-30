Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183226AA1
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 14:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656599812;
	h=To:Subject:From:Message-Id:Date;
	bh=Pd2Pq1HM7AfOG41t/WUDcSjrLQ/cZd4KQ3WglvRRzJ0=;
	b=LNorDBGkphtYOVUlVA5BD4syaYIESZZuPoYD6bWq70sPnIA9hMU8g65crqNUMyBy
	b62Au98nPPUVwd5GmO66rQXICqX73kJJ7q0TtWZ40OU7f+WQYhXgwmUGp9oOIID6spB
	9D3Jtj0M8Mm1fFZhKBnEPFG6jhILsoYZV1VLx/T8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656599812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pd2Pq1HM7AfOG41t/WUDcSjrLQ/cZd4KQ3WglvRRzJ0=;
	b=gXnL2Mnq95FnntP04h+BfrqavE8Cj7ARFTT54q/PorGRNwUgJAgviBAtz1HbtFku
	1P3/3IaWdJSXsZQnP+5IUDQeOcTnAUaj6rDnkDawH7VcaGWCUl1u6YiOwsC3cGTi/wN
	WjqsEi/rhsJYfr0uSjsII92AvrwlNCbdaE/AbfZw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b50b18cf-141e7473-49e6-4058-8e73-ee3e3b48601b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c440bb6874ab6baee416d5f4a70324ace90c7698cbf15a0c8d52b6f163cacc3b
Date: Thu, 30 Jun 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656599812
