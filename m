Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0E2E7F5
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 09:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652608199;
	h=To:Subject:From:Message-Id:Date;
	bh=SAbD8eGaNsVMxfCZHh/YTYoyyCoJ37gIr94/pwfopc8=;
	b=Uom+q2JaK1FFh7BC3GjQrhLeiL/aF3ZTf7XT9XeXfkBvvdwm0n9wfUDA7F8+LrcH
	mhLcDt5qsaUhZcQEpZ4esMV+ItvGUmrivKyBWjrkYh5+zYeF6B9k4BtFsUtWq95m6xs
	QAu7hLygu5hnkhYWKrtnUYiGgWvhwztn4hCfLXU8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652608199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SAbD8eGaNsVMxfCZHh/YTYoyyCoJ37gIr94/pwfopc8=;
	b=bBsNdwLL8CNoRuuemzE9dAGPIG2RK00cVQVsTjHHUJa92C7IAuMz+pVH+A+gmLT4
	o5pzjeYjNVD0hqLAh4ypAheQzCzQgJgpFi0o8fs+sILK+n+Z+7UqllFQmKCFXLD0aW3
	Ccq1sQ+kQTh6CIjxp95CXZriWUW5QGJiPqCR+Wp4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c71fea5c-89d03557-8d0c-483e-9fa6-0845386ae43d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b140136836bf4e2565cd0ccab0bbfeb41ffc3488a71e37ae037aa8e64b47a642
Date: Sun, 15 May 2022 09:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652608199
