Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D2217CB
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 01:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656293812;
	h=To:Subject:From:Message-Id:Date;
	bh=mReWtGLlfxiyckzLMg05EI8ejadKUr8qJjiHaDwaCPA=;
	b=RrMPdy/tZiM/DxP+uMywJPGpIlj/4sEMJfjOMRdxDVpuPqzviilUpve5n6zOI1cp
	5E3t1H3B9b/+VPdB9lDq++lcXU4BVjb1paIdmRIFedxUHwf/2ui5G9JbS2VjV+dqFJf
	p9SWHJ1UIj9V6eKaRevFudc1j5+HKQlmatpI+1fo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656293812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mReWtGLlfxiyckzLMg05EI8ejadKUr8qJjiHaDwaCPA=;
	b=ACWkOjX89fzAOb2BP0ZMs6bzSaY32diREmzVyWNz4LTmKzdAAAJw3JSBsYdRt6eS
	fQ4ZuWPR/QRA86zF7bnhgDCzXh7wkGRwt8KEDg3AtFkgq0e3JJQzuZzLL7bBOmCdZpM
	MW/BamfRMPhAP5nP/iBxL+SMc0pZ3VZuahb+NRs4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a2cde88e-222845f9-68a6-4aad-ab8f-001539ec9390-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0560920a1c84a2e07b2f9574131ef5950b704781c96e911dec4a1a19f95ef636
Date: Mon, 27 Jun 2022 01:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656293812
