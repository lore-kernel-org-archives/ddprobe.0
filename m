Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09FAF3C2E
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 18:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656871612;
	h=To:Subject:From:Message-Id:Date;
	bh=MDtvsIvhVo2MFESossHT7is5dzCcV4dD9i+fwUbAiW0=;
	b=PeRfI50wNrkORtBIodPmKYruGn9WzaRkda4vrTURk3p6dntKx98bZTyF00RN2SLM
	ESoVpuLW7tCVtf4DsMWba2JdIf/30XtK5l3WF4LqCoYxCCgyRd79LpSZywP/8jrVv4I
	9fYuRo76U5RrJ0I80l7PU/mgy6gUzSo0oYjRWRjI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656871612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MDtvsIvhVo2MFESossHT7is5dzCcV4dD9i+fwUbAiW0=;
	b=e/zjug7bQEkzbPtIFyIGPwpJ6sNxTQ5Il3aQQ8YdHW98Oi1CkBjWJD2FExyxr4w5
	0jdj6TnBYLmz0rK1hsJpf4JRlg97anD8Irivs2CXVmUJytVSdbSvxAoaBdaO5zLa+Su
	s83OT5v1nVXU1Q7bRLGcsS9ZOXxfVmyPKpr2OLv0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c53e6f9a-eaf6ec37-e7bf-4313-a20f-3119dc13659f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce3c79f6efdbc6607db21efd46000d1112863b23a542e1ee77c69fccba9c3cf2
Date: Sun, 3 Jul 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656871612
