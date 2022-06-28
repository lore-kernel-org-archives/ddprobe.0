Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BED9257A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 11:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656416812;
	h=To:Subject:From:Message-Id:Date;
	bh=EMWgcKdsr/m4PRMZiJIhyQhwxElRZ1My2M8ilpAWtsQ=;
	b=TxURRlE9OJ1aUveB0IgrR9QWsopQ+904HWqF72FgEZ1YP+bvQbWt3R9ZHTqDQL7/
	Uy+KAcTd5dfcjeMFsCykza+Jr+Wpt2wpWxmhE4NTeiaUaVUX/c0qrOpaisJhQzkdx17
	ImBkMfDAerO13ykypK4fP3dWHWMtmPq9KioNXF9w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656416812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EMWgcKdsr/m4PRMZiJIhyQhwxElRZ1My2M8ilpAWtsQ=;
	b=fhVhXdwHdkC6qoOYdMqIepBk92BwxSUE1/z4ndHmvabrHQzQwvYRD8DLUvsZfXZ0
	L2bkVVDgjbGTMy41NwyVa5QV2c5Oy/pDYCh5LaNIgUKlmZpJKibuvsz3dtzZLFpYeM6
	AZG6IaVWN0JLvXYMJXaqSEnGBsTes3I4V/Ab+bRw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aa22bd0b-bbd7ac4d-4773-48b6-98f2-c5a0ac1a2536-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f7789f018cb021f1e2bfc72b6d96c96969156b116a31a21a19de8d94005b298
Date: Tue, 28 Jun 2022 11:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656416812
