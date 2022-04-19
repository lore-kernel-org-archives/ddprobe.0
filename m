Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F4281374
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 17:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650390539;
	h=To:Subject:From:Message-Id:Date;
	bh=XC04TPFCaUntSjeMRtP4Z8vj3CcWplf1uB622D6Aptk=;
	b=Jon1JnqYfGoozVLl8D0s/5u2GN08a1AXR+grigJXJIyQwVUaZiv/HTx3xD37FyZ+
	hi9K6P3BvJzfmslfW6uRMCJkDrc4dyq2evqtoNlvZ78lQ9dHMOvvKyS3+fcdl9e9Dz8
	R6aL6/JzDyu/8NnadJgOzPpkWehxQswXGkBGtm9E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650390539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XC04TPFCaUntSjeMRtP4Z8vj3CcWplf1uB622D6Aptk=;
	b=ZCNwIRn16U6abFsHt4W/uuY9AlJ+iEDELGhu/DAZml9HmfNekBAOD6o7hUTmXtYV
	0/b4pD7LCGHPmeKk2KkNBWb0w9qx/d7/rnSuBPDo+Q+/xsmK/p1QEi8k4GbsHtIqVc2
	oqbc9Y/ccuUFE51uR39SOaGoh3heLHt7TzZ+6zY4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018042f11a55-00d81ad7-62a4-467d-ba7e-17d2886ca197-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 479fd502ee7a04227d2ce60a0ca0e016cd028a5b209857a03220906763da5f4b
Date: Tue, 19 Apr 2022 17:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650390538
