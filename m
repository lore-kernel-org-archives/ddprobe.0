Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172A1636
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 11:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654861019;
	h=To:Subject:From:Message-Id:Date;
	bh=3KbTe7z0MxS9H2n3+DUsdqIphoycM3OWL4xJyHiTdBs=;
	b=FwH+Zu0864sQZkTo786wdC+PaSJDjRIEKkBkNeOV4FMnWdj0sBzX0gb57Cw2XaMx
	Q8ydV0l94mvRE/QazQaecj92py8EfNwdUDX78GPKcEqu7WIPxM+0hSLOiwo6rT3c8mF
	MVq4pYTIukBNjz3c9UIN4LHJZTrh8nfYuwMKvwLg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654861019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3KbTe7z0MxS9H2n3+DUsdqIphoycM3OWL4xJyHiTdBs=;
	b=PBn+VM5itPkVoVeic+Xm7xl8fqtdrTeTwHby8j2JJDgvleDdTQPJIbRDlCnNQDP6
	HLWWyE/8RUyH2HdVoCGrhjiACVq/oa5HBgE1EytExnLsK36iABSJFOt3leh9PhM3hgV
	L10uI8K7xQfjVVuTeqwO1ojtQXmCNXGdV8/XcxvU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814d6738aa-95748800-155d-4e50-a1cb-b2fadc55f9c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8057f401dcf0edf9615139e13f93b8a09ef96c0d362d9c19655e81ce2fabd4a2
Date: Fri, 10 Jun 2022 11:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654861019
