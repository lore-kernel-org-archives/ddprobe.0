Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4207E2917
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 08:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657009012;
	h=To:Subject:From:Message-Id:Date;
	bh=o2pmBwjjCNSZfS+Wi3L/2lOdrFrHY3J12SYPfawhpMU=;
	b=OXx8ivtM6SehWN+fhqM+62GIWxhZDtRyqfzOpoNBbwcq7DGqgr4OK0xyN7VqM8zS
	kQO2OgUIZ1YEDGLs5iiPPoOoqDaqSS6HElqb0MoNRs9zO7odwfSR2FCL4FwtfwH3oy8
	BjkyCiQHq/EcPcLGxlMQUxNQa+PjlVIA2CPkysyw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657009012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o2pmBwjjCNSZfS+Wi3L/2lOdrFrHY3J12SYPfawhpMU=;
	b=KTEFTEq/5ISRDUDjpVvrlNtYFnKIF3U1fCbh4FGpX4OVDqc2sVfQXnKKhq7L5ngH
	kSz5pxMjB+LeB5Y5fhjyvcl9Z2HrGVAJulxrignLwt0zrOnGTMSZTbDOiD1UyoJBk2T
	uRGV+ud3iTGqdOqd+oyKBzKwGIQGx1EeHA4gmD28=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cd6efe38-bf12ae45-9590-403a-9ab7-474bf6b6a1f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 536cfe89564c7dbc8737571e1f8dec8a025eac9403a512f9ee0d0d25799f7205
Date: Tue, 5 Jul 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657009012
