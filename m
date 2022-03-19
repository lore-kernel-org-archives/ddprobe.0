Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CDD9163
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647706884;
	h=To:Subject:From:Message-Id:Date;
	bh=rYpRNlVmd49xy6AC00rlWAh0f1TVIQYpQMQx+UYdTKI=;
	b=Gt7c++ODBQwW80ny2kXV+kA5DPWt6Xc6vvClOA30QubHUFYuzbZiZ9I6hsMl5LYW
	e/bdoEm2Mnh30FQj7ZMOKEMgtp1x0WvzoioD9ksgfuEVF6jW6eyJiUmOATaFB36tEEH
	1ShjYOUbE8yMLg4pVi38IKEn2JCY+QOGxmJkpai0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647706884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rYpRNlVmd49xy6AC00rlWAh0f1TVIQYpQMQx+UYdTKI=;
	b=UtzSNqTgzOFmFVYHWy9WMLdG7KArLBmJEkijH9s8QvN+BdY0Xv/86S8pU37dwZa8
	li7pG64uRBt5n2a0aUeFgqIlZY2lE9zLyfQ+BH6b2sb0OI04+q7GzU+2xUVwVqSGsCh
	pTj7ANdSyTsf661ucrdy4yXwqHNFzVAI8/UEmj44=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa2fbca72-fe0ca680-d455-4445-984b-40c2207b4469-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d6daee857f97141e4a6a7fb6fd38e5f7162a96e2e0abafa702fa0e201826772
Date: Sat, 19 Mar 2022 16:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647706884
