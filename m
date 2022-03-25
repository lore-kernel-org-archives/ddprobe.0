Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BB523A7
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 01:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648172578;
	h=To:Subject:From:Message-Id:Date;
	bh=gIhXqul+Ut2BCn2LyV9Dnuago7530GT6diCmYXhjr5U=;
	b=HF+pCWzgOVB4Ss1+/9gYtTWIbynEMAAq+7QxQOA5wT6IySpp+LHifKa+WPHyEegr
	AVD43DwCWPb3WB8EvvSm90q2SNUSwQv31qMa9PCG/J06TsG5DQz5VLUFRC27sl2LkNo
	2joKIws6YoatGFK1yCf+SfWam5Q6dAj2rNPh4U34=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648172578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gIhXqul+Ut2BCn2LyV9Dnuago7530GT6diCmYXhjr5U=;
	b=UgpZaRS2/mACVuT7pIXT78W61QbDkQXsmA3Drv0LWT9xZphUBdXzBVFrKaICjFE+
	VrtMFky8G4wJxcj3CmuwKCmCCmOpYttjYxlvBRa0YjntjPV/pskhsRO0D9fBJFJYIS7
	FpznKx9pWR3PY12Xo5YPS0EJ3PlkvCJlqb9fNCjU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbebdb601-363ef184-d2ad-4b57-aef6-ddeb63023a17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 283dbacdfd009043b2e1e36370244de644656e527c14374a6a2962514c7fd342
Date: Fri, 25 Mar 2022 01:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648172578
