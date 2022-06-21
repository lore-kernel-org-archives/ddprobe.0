Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0BE7E2
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 00:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655770979;
	h=To:Subject:From:Message-Id:Date;
	bh=VJZMTUtKO6a963FT/uJXrHSPXA8+QOv/hlgLbLPA+20=;
	b=HnWHhP0XwWjd9lDmeXrhoJESSnv7XSPKR282JQ5Y2Ofzopo+O9Ybs43FhH+Q5//d
	UR0paQDHbDUeE7GldvoLshjqy8picCKuOB/cmqJFXva42NiV2bGASA8T1WR9kh4m4AX
	EgvqzTv9nhdxSwH1qpisUfZltp6dMavEfvYkr6+0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655770979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VJZMTUtKO6a963FT/uJXrHSPXA8+QOv/hlgLbLPA+20=;
	b=k38MGIPjFJgMsuw6RjEbgWVQxcHvny3ZXluSdbTQvQ26JwLz+BQVkW50+eOxnJEh
	wRkVskIUfFr/YqtQPej16wkF86fbQ6I922Z1HxyWHsa/WFbc5pxdATHdiB8NlXoORW4
	zoy8uWzAMhHmJOx8nQ8y4l5ICzE1TyzzOqjC05Wc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018183a41be3-1572f91b-fdfe-483e-95fc-776a7571b8c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d016d6d88b1e8da495ffcd63a87e4d4e5e3a43bcf348c1dc4b9036ca97ab3f4
Date: Tue, 21 Jun 2022 00:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655770979
