Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC0D6AC2
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 23:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647385284;
	h=To:Subject:From:Message-Id:Date;
	bh=SQKhVst9zKIW0ClWsiIw30iWGljcg5eGLV8gto0546o=;
	b=X3h4gK3MlWVVFvfzn8edLz7cCVdDyuWYLNEXstQme6r3VJiDtTFNMp1zqZzh2ESV
	RC7XKjalc+nHooRp3fyjDxq2jAGwSsh9GrPraJHbzcwhJGuGvZFO2BFGMMZAdvOvNoe
	gKe1o7eqnEKSukYBcHmJo812Tv1SWpSMAmAbilL0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647385284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SQKhVst9zKIW0ClWsiIw30iWGljcg5eGLV8gto0546o=;
	b=fzouVZ8ibjOyXDV+HI8RGnUi3Zv9ZSOaEuftNfFLeKUvmjLqadT6eTRxUugXd0H/
	dWu0O0fM/Al2V2DZofCUxdFeNhjkyI1T9P4uFDi78H6v2FHHi4hJd4/F5aDhrF6F9n9
	aInVKxc0DQj2nkKratXN4XeMXAnz4Y11YODJ85Qk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8fd090a3-ab26680a-5357-4aa2-8259-dbb3b5436340-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 947538c129035da17b623873200e454ac4a5690070a5b32d32c1ac8ee63b9725
Date: Tue, 15 Mar 2022 23:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647385284
