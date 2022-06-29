Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598EC7B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 09:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656494212;
	h=To:Subject:From:Message-Id:Date;
	bh=s7YpjFyrIlj1+b5mayK4PncfkMObL9GWLtVm6QkT2WM=;
	b=H7uWc92+GhmtgurUVIIBHws73D4kFeORyIAmLMDC6SJKxJ2h6RHaMTShZeh0eeO9
	U2y6POBC9OllfrndRqwhqj2Sa2x0nDdLqcdEF87vN72qUOL61ulUFLvGGc6ZUc64dnc
	nFb7Xb57Mz6Yq9t1ItD7YW4sTqUWpdn1EDS79wVY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656494212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s7YpjFyrIlj1+b5mayK4PncfkMObL9GWLtVm6QkT2WM=;
	b=iOAV2Cvgc6dHT4l1EqMyXwUWmkGlh4NfCLZIsYqspHHtPP0fg6dUe8XJV02uIyHH
	dz2fy4ne+P6VUv4XoY9GuHfp5Kmus/pHAnTheJOX8nYOH60Bgayh2DWqier2O1KC2ts
	pOqHgQPvSUtDtplMSLssQslfLh/cQBe/addlqwmg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aebfc4d1-3c07d962-4c97-4913-b504-edc8d33061dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f25f97dfb7ce2e849fea10c4aaa059bdcb259ca0dcf651a4cdb21cd2a7dded1
Date: Wed, 29 Jun 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656494212
