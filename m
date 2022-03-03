Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77F1C36B
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 20:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646338584;
	h=To:Subject:From:Message-Id:Date;
	bh=JkrV3L8qI1BHMT9c4dts74KQK5YGv3cy8k3/GoW/ITE=;
	b=ktfBDvWMKUJsh5epqnATYc0Wi1XKbrpkovTPoMmkcj/fPzKKYZRCoWSo18zx9xx+
	ndCCAhz2y5yXfUUkAEWJomidN82fNQoDG6NlFWqBQGaLAFnrDjdKrXJcQpqk4wFCFuZ
	bmJwcz/n1wvk4R8y80wfmSV/SdL/ieF7CihqlxIk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646338584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JkrV3L8qI1BHMT9c4dts74KQK5YGv3cy8k3/GoW/ITE=;
	b=AkFIYbkrPRP8OQgb4pliHFizsJM8bHROJ7b5kbGaBuZ0r+9aY3qWgBFAkVwbT2Rq
	GIRfEiYElNgozdgDFcY4DxDP8+Q0PD47G6Fyp4voUshYcWXrvNL+wyrKgH6kGFCqaIa
	953vZY9F1g5BmagyRCq+kWSElpIP7wW7zNWLe5dE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f516d30ef-eeb5dc7e-8acd-46d0-82ec-0b677881571c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79956a69d0945196ce3a6be6cb6d675c975a3aea2b3c6f7a70e5d34dd582d1de
Date: Thu, 3 Mar 2022 20:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646338584
