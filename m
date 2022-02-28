Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C61C15C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646079084;
	h=To:Subject:From:Message-Id:Date;
	bh=gLMSwYgZostF7bOR831AGOcDLUoQQIJ5mzxUui5SWh4=;
	b=QI5fwXVXnSPLbn2e3TF6R1NCvVjk/V6rweH9yHAjFwaLSQ+TSmLInQw81LeANBCB
	cPkuFnRN7uPMZIACkOYpNe3dgvn8pt3IrmmU0wjGsn/qzsVqruWz66KEMGXkytchSWY
	4siw5ubGzldvpNGCUiRIsY76i9PpV4UEpAz2vfW0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646079084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gLMSwYgZostF7bOR831AGOcDLUoQQIJ5mzxUui5SWh4=;
	b=fFu/mIQkp2NY1eca0WCviy9W3In3ALUWaPjizUXdVrIHVhqMpkD5Fuo3/pnsHQcB
	EvsxSucGmkZU5/OSSquUpMLWyWPMcVhiJbE7tXX/jX865PX3aJx3EZd7on6eFFzfQoZ
	I+OSNVqGaJZcGR7rvBuEWBHMY4bS6iWiUxalppqw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f41f588d9-a47895d3-b077-4a80-a012-5fe45db4beb8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c0c694920a22a6b17ca3cf9e0d1dc02d19f6a5fe6f6ca27afc49b296f13d7d1
Date: Mon, 28 Feb 2022 20:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646079084
