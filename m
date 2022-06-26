Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834EB2F3D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 15:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656257212;
	h=To:Subject:From:Message-Id:Date;
	bh=ABv9vCCjv7089yHj2Dml4maruSO/C4nBbbD7J0JLNiI=;
	b=lhv/8ZNiwI6/HuFNMcyAkiVQfRTZW67/wkxUJZ8nyVhTPoCKUWWn65dXsi71lcyQ
	tPIIy6QWQ6/CU8q+574/HBLHU7SWtaNZlzqk28M+I4R6ZWZyDyqHAiQdaX7xIFoXmw7
	ta0vFeBFv2Hy8dgMoyYr/B2EiGtM1DuMbvgc4TI4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656257212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ABv9vCCjv7089yHj2Dml4maruSO/C4nBbbD7J0JLNiI=;
	b=bXR0zdGWyjxvKM3Ey1T/jd4ghg1sL3NmHKlToy2/K35RmuS6OyWI/GaYE0o+7C7n
	l8tj1BiU8iHdqZgP0b0JDRE5unJE7xJ2I8m9vaP+NiX9AIPeujQ9OgZMl+GOxeMTZjt
	xpWR/maNwTG+I0HURilGblYqm3o8BL9GeSxMY3V4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a09f6f8e-27ad2e3d-6911-4b60-a518-6bc6bd9ffc99-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 073e4161092a42d67d32136b26f07e8654dac0f58f605423db155216a48943e3
Date: Sun, 26 Jun 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656257212
