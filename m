Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120E93FE0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 21:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656107812;
	h=To:Subject:From:Message-Id:Date;
	bh=QPbHyBMcpcddF+RsQotitZx4vz+oYq7SWakeZLQvVXU=;
	b=Tcd9y+ZxbHTuQlUGF93hcADAvtDyJ9w+LVRNTojDpsqYl3GQnwEONPLIGrM5s4TR
	WYnuhYBKNW71X19pIc62BReDj9GnEdNsOY4mij49mZBz0XFDIvZupr9daJOCwe7PzRV
	oLQdItEgmclwsPhc2T0qkpuLyIyzKHqFtQtGwlYA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656107812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QPbHyBMcpcddF+RsQotitZx4vz+oYq7SWakeZLQvVXU=;
	b=ZuqVBA6wpdEulovQGst++siXbCaG9O0yHsieMpvJpT3hJSSe0y2AS+NG5ehwWkI/
	EBZP11Cup0UUlGb3uHKgcaU4BMVTirHxqYAJ+TIYxlitzqa8JvrdzEBjO8Na6UfS4ay
	MvDvygU/QZ4ObGAR8ABU9RfVSgHO6V1HHT6xzuUs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018197b7c5bd-40d76c06-588a-45ac-8002-1025af973d2d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3ed1c7569eaae41c8d7333465d6ec28e2ad5ea73445e7f0afd16094873a11c3
Date: Fri, 24 Jun 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656107812
