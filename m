Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F23272F56
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 12:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657025212;
	h=To:Subject:From:Message-Id:Date;
	bh=DcOVnscQYaobMy4QJU/+MsaPbqBRKxplg5c0jjB3h1A=;
	b=JCeQnPY9+uxNSVHuuT2g0L8CV3eXN9R1+4WXjpkDxd89t15g2rNcmy+JLLQwqQl2
	BcriBrJuHrc3xvA3EQAa8I6idbyOFpIHQxcp3jEc3GDSdDqcpWkCZ6rl15UW8RviQBC
	nPFTcC3QKNUmGjtd3bqqueJCCxmZpb1sORo6VMW8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657025212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DcOVnscQYaobMy4QJU/+MsaPbqBRKxplg5c0jjB3h1A=;
	b=CueVyr+PZ9lxSf9siUsHQeUeqwEKmLeIs4h1zzMKLIJfpY+orP1UuTD2kEXEDkQm
	jQlU3ZrM94sRuSO4ozS5h+a4PvwB90EA+PHOLSr40b8iCgE05/n7/Bdy2zAQXwJ/9iv
	tM5y65X92DtAi6Y/yoVZefOFTDjbJ/B0XcvGMNyQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ce662f63-3ba32f8a-fb8e-4598-91f2-f213e60abd1c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e52dc9ffbf8dd47d04d19106a5ed5fa90b369d60e68c26f4df82bab0c9b2662
Date: Tue, 5 Jul 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657025212
