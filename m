Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588C47FA
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661170852;
	h=To:Subject:From:Message-Id:Date;
	bh=34a3q7ikjMXA/6+hjift5PaWS1UstS4890tg0zC7RXk=;
	b=lY9V4ZZS07qPO/Hv2q9+iyLCMKFq1zfWF0smOzQLx5bfO4P5qoDKWveKU8z50esP
	nEdABJtLUOcoFN9t/YchMpZ7TeHvqqINaaRIHvvc7OVjYTgfNPqvUU+p/wrmAHZOYUN
	6CYBGWEfa2iiQfZFmbOk9JrWwUhghMPR4T89VVIQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661170852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=34a3q7ikjMXA/6+hjift5PaWS1UstS4890tg0zC7RXk=;
	b=EjBapCKOBbW9a/eCebxReVrjna+C2omojdnneGvPYv5RSfLHS71uxK/jt1f+rPM0
	kPpQOB7I3s4bI/aVTy4AxF5YP+wQM5AiS6hXY1AjEwYRRzgRNnHH5JuImUDqRSgD+vG
	fcSqFxrLiIxbYMlOy9tGaYk1NFP+GFprPgxXclEg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c57fa2fd-c1a0a55b-720c-45ec-9348-0982b2dd1d9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4364ed6a66e602a5791a3356860b4e7cab321ea6dd519326478865adcfb14fc0
Date: Mon, 22 Aug 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661170852
