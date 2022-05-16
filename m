Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3F4EA9
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 10:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652695739;
	h=To:Subject:From:Message-Id:Date;
	bh=f2HHwplhp/Spe9w0jbGV6AZ6TSm7CL+1z5CEVSuS4fQ=;
	b=SGXQDC2oFXZDp34osvvrPZxpsAbJ+H9chDvwt7iTo/4+K5eerrK+HZ/hScGTbJSt
	dvHKwUEDJpzQMiRFXlKK1PNvyNLJkX9VhywiKEKt7rXHq8T6R2NoY5lD0Q0pTMLPnQK
	5CDheb1P/dKj7YoreeHuCPuUe1FB6pwz0ZDiLLSQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652695739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f2HHwplhp/Spe9w0jbGV6AZ6TSm7CL+1z5CEVSuS4fQ=;
	b=aECqy2T2b4Uoq6LYOxlk/fOhu5xVE1v9clRG6tv0EQxz9qxYqP1o2yE4l0wi84Gr
	LD5CL+NV23XWxYc9e9Hrr2Xv5cOCozwwtp5+rIX+T/nqdx7X9I4en/tmItXoTVzagU/
	KbJyIeGnw4vBKrmoOLcgrh3bicC/KIIJkg28aVsg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cc57abb7-6ab26a39-77ad-463f-b1e5-283069885048-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f80e87e480333f439cd04cb9df6030b39cef23ae327b32f1981cf0c9fcbbbe76
Date: Mon, 16 May 2022 10:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652695739
