Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E607A
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660024852;
	h=To:Subject:From:Message-Id:Date;
	bh=BIYvUAoRai8CvHRuV1KpbnoL1qX1BCbgsDuZnzZ7oH8=;
	b=HoXVEZuhI0bPCDFcF5r0jQwMycUEtjkcTr+eLFDkliX9cU8B/IqqoGDY0WpMWGcQ
	AfkystJdMShak7W2adRc0XV8kRVq6w0FfJ1MDZmm4vM46eaVBlSXKwTDwqJHB0Efdwe
	sXBH0lwur+6O7A4N2BSrVuWJy+Y+0o7bfbI9oy8k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660024852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BIYvUAoRai8CvHRuV1KpbnoL1qX1BCbgsDuZnzZ7oH8=;
	b=eQYhvfvMIxEFUqvfiuOHH6Y3B6am3JBMm4CXHzb+78+1RkZEv4aSCoqtShvYazZe
	sZV/AjnKKNlKToQulo+vS2ubcSIl1onzRziBe1H5zpWpEjqe2hDe6Gvj6gR/125e/O6
	A72tw2/Lu+Dj7TSnbC4zL781TpzbBE5OBfbg+2N4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018281311043-f57ac633-9729-42a6-96e2-7e585728bdd1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e785718cb9068027d3c7fcfc7d067bb8ada4defd16aa4431d93c10054b06674b
Date: Tue, 9 Aug 2022 06:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660024852
